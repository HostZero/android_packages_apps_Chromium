.class Lorg/chromium/chrome/browser/infobar/InfoBarContainer$1;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "InfoBarContainer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$1;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidNavigateMainFrame(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer$1;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setIsObscuredByOtherView(Z)V

    .line 95
    return-void
.end method
