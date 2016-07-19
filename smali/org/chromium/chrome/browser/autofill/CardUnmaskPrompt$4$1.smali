.class Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4$1;
.super Ljava/lang/Object;
.source "CardUnmaskPrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4$1;->this$1:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4$1;->this$1:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;

    iget-object v0, v0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->mStoreLocallyTooltipPopup:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->access$602(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 295
    return-void
.end method
