.class Lorg/chromium/chrome/browser/nfc/BeamCallback$1;
.super Ljava/lang/Object;
.source "BeamCallback.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/nfc/BeamCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/nfc/BeamCallback;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$1;->this$0:Lorg/chromium/chrome/browser/nfc/BeamCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/nfc/BeamCallback$1;->call()Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/nfc/BeamCallback$1;->this$0:Lorg/chromium/chrome/browser/nfc/BeamCallback;

    # getter for: Lorg/chromium/chrome/browser/nfc/BeamCallback;->mProvider:Lorg/chromium/chrome/browser/nfc/BeamProvider;
    invoke-static {v0}, Lorg/chromium/chrome/browser/nfc/BeamCallback;->access$000(Lorg/chromium/chrome/browser/nfc/BeamCallback;)Lorg/chromium/chrome/browser/nfc/BeamProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/nfc/BeamProvider;->getTabUrlForBeam()Ljava/lang/String;

    move-result-object v1

    .line 83
    if-nez v1, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;

    sget v1, Lorg/chromium/chrome/R$string;->nfc_beam_error_overlay_active:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;-><init>(Ljava/lang/Integer;)V

    .line 85
    :goto_0
    return-object v0

    .line 84
    :cond_0
    # invokes: Lorg/chromium/chrome/browser/nfc/BeamCallback;->isValidUrl(Ljava/lang/String;)Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/nfc/BeamCallback;->access$100(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;

    sget v1, Lorg/chromium/chrome/R$string;->nfc_beam_error_bad_url:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;-><init>(Ljava/lang/Integer;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/nfc/BeamCallback$Status;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
