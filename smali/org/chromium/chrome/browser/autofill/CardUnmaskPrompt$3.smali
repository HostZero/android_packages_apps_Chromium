.class Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$3;
.super Ljava/lang/Object;
.source "CardUnmaskPrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$3;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$3;->this$0:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->dismiss()V

    .line 214
    return-void
.end method
