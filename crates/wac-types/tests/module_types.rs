use wac_types::{Package, Types};

#[test]
fn exact_function_import_returns_error() {
    let bytes = wat::parse_str(
        r#"(component
            (import "m" (core module
                (type (func))
                (import "a" "f" (func (exact (type 0))))
            ))
        )"#,
    )
    .unwrap();

    let err = Package::from_bytes("test:pkg", None, bytes, &mut Types::default()).unwrap_err();
    assert!(
        err.to_string().contains("exact function imports"),
        "error should mention exact function imports: {err}"
    );
}
