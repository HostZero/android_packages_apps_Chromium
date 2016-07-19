.class Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "ChildBackgroundTabShowObserver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mParentTabId:I

.field private final mTabCreationOrder:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mTabCreationOrder:Ljava/util/ArrayList;

    .line 32
    iput p1, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mParentTabId:I

    .line 33
    return-void
.end method


# virtual methods
.method public onBackgroundTabOpened(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 40
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mParentTabId:I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getParentId()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mTabCreationOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 44
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mTabCreationOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mTabCreationOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mTabCreationOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 55
    const-string/jumbo v2, "Tabs.FirstSwitchedToForegroundCreationRank"

    invoke-static {v2, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount100Histogram(Ljava/lang/String;I)V

    .line 56
    const-string/jumbo v0, "Tabs.FirstSwitchedToForegroundCreationReverseRank"

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount100Histogram(Ljava/lang/String;I)V

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mTabCreationOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 60
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/ChildBackgroundTabShowObserver;->mTabCreationOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    return-void
.end method
