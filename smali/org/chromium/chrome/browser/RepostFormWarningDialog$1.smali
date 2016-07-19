.class Lorg/chromium/chrome/browser/RepostFormWarningDialog$1;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "RepostFormWarningDialog.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/RepostFormWarningDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/RepostFormWarningDialog;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog$1;->this$0:Lorg/chromium/chrome/browser/RepostFormWarningDialog;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog$1;->this$0:Lorg/chromium/chrome/browser/RepostFormWarningDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->dismiss()V

    .line 46
    return-void
.end method
