.class Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;
.super Ljava/lang/Object;
.source "JavascriptAppModalDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/JavascriptAppModalDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/JavascriptAppModalDialog;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;->this$0:Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;->this$0:Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->cancel(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->access$000(Lorg/chromium/chrome/browser/JavascriptAppModalDialog;Z)V

    .line 107
    return-void
.end method
