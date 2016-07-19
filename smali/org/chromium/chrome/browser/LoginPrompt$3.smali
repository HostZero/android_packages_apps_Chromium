.class Lorg/chromium/chrome/browser/LoginPrompt$3;
.super Ljava/lang/Object;
.source "LoginPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/LoginPrompt;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/LoginPrompt;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/chromium/chrome/browser/LoginPrompt$3;->this$0:Lorg/chromium/chrome/browser/LoginPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt$3;->this$0:Lorg/chromium/chrome/browser/LoginPrompt;

    # getter for: Lorg/chromium/chrome/browser/LoginPrompt;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/LoginPrompt;->access$100(Lorg/chromium/chrome/browser/LoginPrompt;)Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->cancel()V

    .line 72
    return-void
.end method
