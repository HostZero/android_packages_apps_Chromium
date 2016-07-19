.class Lorg/chromium/chrome/browser/metrics/UmaSessionStats$2;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "UmaSessionStats.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats$2;->this$0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    return-void
.end method


# virtual methods
.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats$2;->this$0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    # invokes: Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->recordPageLoadStats(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->access$100(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 105
    return-void
.end method
