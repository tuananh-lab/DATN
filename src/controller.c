#include <smolrtsp/controller.h>

#include <assert.h>

// // Triển khai các phương thức trong đối tượng controller
// void pause_impl(SmolRTSP_Context *ctx, const SmolRTSP_Request *req) {
//     (void)ctx;
//     (void)req;
//     // Xử lý logic cho chức năng PAUSE ở đây

// }

// // Khởi tạo đối tượng controller và thiết lập các con trỏ hàm
// void init_controller(SmolRTSP_Controller *controller) {
//     controller->funcs.pause = pause_impl;
//     // Thiết lập các con trỏ hàm cho các phương thức khác nếu cần
// }
void smolrtsp_dispatch(
    SmolRTSP_Writer conn, SmolRTSP_Controller controller,
    const SmolRTSP_Request *restrict req) {
    assert(conn.self && conn.vptr);
    assert(controller.self && controller.vptr);
    assert(req);

    SmolRTSP_Context *ctx = SmolRTSP_Context_new(conn, req->cseq);

    if (VCALL(controller, before, ctx, req) == SmolRTSP_ControlFlow_Break) {
        goto after;
    }

    const SmolRTSP_Method method = req->start_line.method,
                          options = SMOLRTSP_METHOD_OPTIONS,
                          describe = SMOLRTSP_METHOD_DESCRIBE,
                          setup = SMOLRTSP_METHOD_SETUP,
                          play = SMOLRTSP_METHOD_PLAY,
                        //   pause = SMOLRTSP_METHOD_PAUSE,
                          teardown = SMOLRTSP_METHOD_TEARDOWN;

    if (SmolRTSP_Method_eq(&method, &options)) {
        VCALL(controller, options, ctx, req);
    } else if (SmolRTSP_Method_eq(&method, &describe)) {
        VCALL(controller, describe, ctx, req);
    } else if (SmolRTSP_Method_eq(&method, &setup)) {
        VCALL(controller, setup, ctx, req);
    } else if (SmolRTSP_Method_eq(&method, &play)) {
        VCALL(controller, play, ctx, req);
    // } else if (SmolRTSP_Method_eq(&method, &pause)){
    //     controller.pause(ctx,req);
    } else if (SmolRTSP_Method_eq(&method, &teardown)) {
        VCALL(controller, teardown, ctx, req);
    } else {
        VCALL(controller, unknown, ctx, req);
    }

after:
    VCALL(controller, after, SmolRTSP_Context_get_ret(ctx), ctx, req);

    VTABLE(SmolRTSP_Context, SmolRTSP_Droppable).drop(ctx);
}

