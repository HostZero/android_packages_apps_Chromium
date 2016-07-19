.class public Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;
.super Ljava/lang/Object;
.source "EmptyTabModel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModel;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;
    .locals 1

    .prologue
    .line 33
    # getter for: Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel$LazyHolder;->INSTANCE:Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel$LazyHolder;->access$000()Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    return-void
.end method

.method public cancelTabClosure(I)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public closeAllTabs()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public closeAllTabs(ZZ)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public commitAllTabClosures()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public commitTabClosure(I)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;
    .locals 0

    .prologue
    .line 106
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfile()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public index()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x1

    return v0
.end method

.method public indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .prologue
    .line 77
    const/4 v0, -0x1

    return v0
.end method

.method public isClosurePending(I)Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public moveTab(II)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public supportsPendingClosures()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
