.class Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "TabModelSelectorBase.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->notifyChanged()V

    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->notifyNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 49
    return-void
.end method

.method public didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->notifyChanged()V

    .line 59
    return-void
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->notifyChanged()V

    .line 54
    return-void
.end method
