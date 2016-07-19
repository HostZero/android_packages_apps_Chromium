.class Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;
.super Landroid/os/Handler;
.source "StripLayoutHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1460
    const-class v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)V
    .locals 0

    .prologue
    .line 1460
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;)V
    .locals 0

    .prologue
    .line 1460
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;-><init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1463
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1472
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "StripTabEventHandler got unknown message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1465
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->computeAndUpdateTabWidth(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->access$400(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;Z)V

    .line 1466
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    # getter for: Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->access$500(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1469
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$StripTabEventHandler;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    # getter for: Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mUpdateHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->access$500(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;->requestUpdate()V

    goto :goto_0

    .line 1463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
