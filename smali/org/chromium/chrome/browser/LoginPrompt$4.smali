.class Lorg/chromium/chrome/browser/LoginPrompt$4;
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
    .line 62
    iput-object p1, p0, Lorg/chromium/chrome/browser/LoginPrompt$4;->this$0:Lorg/chromium/chrome/browser/LoginPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt$4;->this$0:Lorg/chromium/chrome/browser/LoginPrompt;

    # getter for: Lorg/chromium/chrome/browser/LoginPrompt;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/LoginPrompt;->access$100(Lorg/chromium/chrome/browser/LoginPrompt;)Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/LoginPrompt$4;->this$0:Lorg/chromium/chrome/browser/LoginPrompt;

    # invokes: Lorg/chromium/chrome/browser/LoginPrompt;->getUsername()Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/LoginPrompt;->access$200(Lorg/chromium/chrome/browser/LoginPrompt;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/LoginPrompt$4;->this$0:Lorg/chromium/chrome/browser/LoginPrompt;

    # invokes: Lorg/chromium/chrome/browser/LoginPrompt;->getPassword()Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/LoginPrompt;->access$300(Lorg/chromium/chrome/browser/LoginPrompt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
