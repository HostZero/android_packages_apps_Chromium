.class Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;
.super Ljava/lang/Object;
.source "CardUnmaskPrompt.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    .line 290
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 291
    new-instance v1, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4$1;-><init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    return-void
.end method
