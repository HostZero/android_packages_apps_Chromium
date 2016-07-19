.class Lorg/chromium/chrome/browser/gsa/ContextReporter$1;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "ContextReporter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter$1;->this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    return-void
.end method


# virtual methods
.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter$1;->this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageOfCurrentContextIfPossible(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    invoke-static {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->access$000(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 95
    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter$1;->this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageOfCurrentContextIfPossible(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    invoke-static {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->access$000(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 100
    return-void
.end method
