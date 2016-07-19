.class Lorg/chromium/chrome/browser/gsa/ContextReporter$2;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "ContextReporter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/gsa/ContextReporter;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter$2;->this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/ContextReporter$2;->this$0:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportUsageOfCurrentContextIfPossible(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    invoke-static {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->access$000(Lorg/chromium/chrome/browser/gsa/ContextReporter;Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 109
    return-void
.end method
