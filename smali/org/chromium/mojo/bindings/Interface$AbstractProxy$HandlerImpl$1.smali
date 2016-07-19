.class Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;
.super Ljava/lang/Object;
.source "Interface.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Callbacks$Callback1;


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

.field final synthetic val$callback:Lorg/chromium/mojo/bindings/Callbacks$Callback1;


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lorg/chromium/mojo/bindings/RunResponseMessageParams;

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;->call(Lorg/chromium/mojo/bindings/RunResponseMessageParams;)V

    return-void
.end method

.method public call(Lorg/chromium/mojo/bindings/RunResponseMessageParams;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;->this$0:Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    iget-object v1, p1, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    iget v1, v1, Lorg/chromium/mojo/bindings/QueryVersionResult;->version:I

    # setter for: Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I
    invoke-static {v0, v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->access$002(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;I)I

    .line 198
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;->val$callback:Lorg/chromium/mojo/bindings/Callbacks$Callback1;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;->this$0:Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    # getter for: Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I
    invoke-static {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->access$000(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/mojo/bindings/Callbacks$Callback1;->call(Ljava/lang/Object;)V

    .line 199
    return-void
.end method
