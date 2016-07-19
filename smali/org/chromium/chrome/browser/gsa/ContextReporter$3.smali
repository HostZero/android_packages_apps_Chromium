.class Lorg/chromium/chrome/browser/gsa/ContextReporter$3;
.super Ljava/lang/Object;
.source "ContextReporter.java"

# interfaces
.implements Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/gsa/ContextReporter;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter$3;->this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideContextualSearch()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter$3;->this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportDisplaySelection(Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->access$100(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 125
    return-void
.end method

.method public onShowContextualSearch(Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    .locals 1

    .prologue
    .line 119
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter$3;->this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    # invokes: Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportDisplaySelection(Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->access$100(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 120
    :cond_0
    return-void
.end method
