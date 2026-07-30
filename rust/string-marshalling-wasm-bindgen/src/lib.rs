use wasm_bindgen::prelude::*;
use web_sys::{Document, Element, Performance};

const SIZES: [usize; 5] = [8, 128, 1024, 16384, 262144];
const MAX_REPS: u64 = 1 << 24;

fn append_row(document: &Document, table: &Element, cell_tag: &str, cells: &[String]) {
    let row = document.create_element("tr").unwrap();
    for cell in cells {
        let td = document.create_element(cell_tag).unwrap();
        td.set_text_content(Some(cell));
        row.append_child(&td).unwrap();
    }
    table.append_child(&row).unwrap();
}

// Autoranging timer: doubles the rep count until at least `min_ms` has
// elapsed, so cheap ops (need many reps to clear timer resolution) and
// expensive ops (need few) both get a trustworthy measurement.
fn measure(perf: &Performance, min_ms: f64, mut run: impl FnMut(u64)) -> (u64, f64) {
    let mut reps: u64 = 100;
    loop {
        perf.mark("measure-start").unwrap();
        run(reps);
        perf.mark("measure-end").unwrap();
        let elapsed = perf
            .measure_with_str_and_end_mark("measure", "measure-start", "measure-end")
            .unwrap()
            .duration();
        if elapsed >= min_ms || reps >= MAX_REPS {
            return (reps, elapsed);
        }
        reps *= 2;
    }
}

#[wasm_bindgen]
pub fn run(min_ms: u32) {
    let window = web_sys::window().unwrap();
    let document = window.document().unwrap();
    let body = document.body().unwrap();
    let perf = window.performance().unwrap();

    perf.mark("wasm-bindgen-start").unwrap();

    let el = document.create_element("div").unwrap();
    let min_ms = min_ms.max(1) as f64;

    let heading = document.create_element("h2").unwrap();
    heading.set_text_content(Some("wasm-bindgen (Rust)"));

    let table = document.create_element("table").unwrap();
    append_row(
        &document,
        &table,
        "th",
        &[
            String::from("size"),
            String::from("set µs/call"),
            String::from("set MB/s"),
            String::from("get µs/call"),
            String::from("get MB/s"),
        ],
    );

    for &size in SIZES.iter() {
        let value = "x".repeat(size);
        el.set_text_content(Some(&value));

        let (set_reps, set_ms) = measure(&perf, min_ms, |reps| {
            for _ in 0..reps {
                el.set_text_content(Some(&value));
            }
        });
        let (get_reps, get_ms) = measure(&perf, min_ms, |reps| {
            for _ in 0..reps {
                let _ = el.text_content();
            }
        });

        let set_us_per_call = set_ms * 1_000.0 / set_reps as f64;
        let get_us_per_call = get_ms * 1_000.0 / get_reps as f64;
        let set_mb_per_s = (size as f64 * set_reps as f64) / (set_ms * 1_000.0);
        let get_mb_per_s = (size as f64 * get_reps as f64) / (get_ms * 1_000.0);

        append_row(
            &document,
            &table,
            "td",
            &[
                format!("{size} B"),
                format!("{set_us_per_call:.3}"),
                format!("{set_mb_per_s:.1}"),
                format!("{get_us_per_call:.3}"),
                format!("{get_mb_per_s:.1}"),
            ],
        );
    }

    body.append_child(&heading).unwrap();
    body.append_child(&table).unwrap();

    perf.mark("wasm-bindgen-end").unwrap();
    perf.measure_with_str_and_end_mark("wasm-bindgen", "wasm-bindgen-start", "wasm-bindgen-end")
        .unwrap();
}
