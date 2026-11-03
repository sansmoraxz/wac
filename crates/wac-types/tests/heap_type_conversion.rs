use wac_types::{HeapType, Package, Types};

#[test]
fn shared_heap_type_returns_error() {
    let shared_heap = wasmparser::HeapType::Abstract {
        shared: true,
        ty: wasmparser::AbstractHeapType::Func,
    };

    let result: Result<HeapType, _> = shared_heap.try_into();
    assert!(
        result.is_err(),
        "shared heap types should return an error, not panic"
    );
    let err = result.unwrap_err().to_string();
    assert!(
        err.contains("shared heap types are not supported"),
        "error should mention shared heap types: {err}"
    );
}

#[test]
fn exact_heap_type_returns_error() {
    let exact_heap = wasmparser::HeapType::Exact(wasmparser::UnpackedIndex::Module(0));

    let result: Result<HeapType, _> = exact_heap.try_into();
    assert!(
        result.is_err(),
        "exact heap types should return an error, not panic"
    );
    let err = result.unwrap_err().to_string();
    assert!(
        err.contains("not yet supported"),
        "error should mention unsupported: {err}"
    );
}

#[test]
fn non_shared_heap_type_succeeds() {
    let heap = wasmparser::HeapType::Abstract {
        shared: false,
        ty: wasmparser::AbstractHeapType::Func,
    };

    let result: Result<HeapType, _> = heap.try_into();
    assert!(result.is_ok(), "non-shared heap types should convert fine");
    assert_eq!(result.unwrap(), HeapType::Func);
}

#[test]
fn concrete_heap_type_in_module_type_returns_error() {
    let bytes = wat::parse_str(
        r#"(component
            (import "m" (core module
                (type (func))
                (import "a" "g" (global (ref null 0)))
            ))
        )"#,
    )
    .unwrap();

    let err = Package::from_bytes("test:pkg", None, bytes, &mut Types::default()).unwrap_err();
    assert!(
        err.to_string().contains("concrete heap types"),
        "error should mention concrete heap types: {err}"
    );
}
