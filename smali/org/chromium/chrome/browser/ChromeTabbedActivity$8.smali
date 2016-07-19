.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$8;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "ChromeTabbedActivity.java"


# instance fields
.field private mIsFirstPageLoadStart:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 1

    .prologue
    .line 981
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$8;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$8;->mIsFirstPageLoadStart:Z

    return-void
.end method


# virtual methods
.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$8;->mIsFirstPageLoadStart:Z

    if-nez v0, :cond_0

    .line 990
    invoke-static {v1}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->setRunningApplicationStart(Z)V

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$8;->mIsFirstPageLoadStart:Z

    goto :goto_0
.end method
