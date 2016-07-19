.class Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "TabModelSelectorTabObserver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    # getter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->access$000(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->mSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->access$102(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    # invokes: Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->registerModelObservers()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->access$200(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;)V

    .line 66
    return-void
.end method

.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "onChange should have happened and unregistered this listener."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method
