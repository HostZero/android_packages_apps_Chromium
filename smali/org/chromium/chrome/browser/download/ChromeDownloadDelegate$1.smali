.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$1;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "ChromeDownloadDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$1;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$1;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$002(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    .line 146
    return-void
.end method
