.class Lorg/chromium/chrome/browser/nfc/BeamCallback$2;
.super Ljava/lang/Object;
.source "BeamCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/nfc/BeamCallback;

.field final synthetic val$errorStringId:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/nfc/BeamCallback;I)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$2;->this$0:Lorg/chromium/chrome/browser/nfc/BeamCallback;

    iput p2, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$2;->val$errorStringId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$2;->this$0:Lorg/chromium/chrome/browser/nfc/BeamCallback;

    # getter for: Lorg/chromium/chrome/browser/nfc/BeamCallback;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/chromium/chrome/browser/nfc/BeamCallback;->access$200(Lorg/chromium/chrome/browser/nfc/BeamCallback;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$2;->val$errorStringId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 121
    return-void
.end method
