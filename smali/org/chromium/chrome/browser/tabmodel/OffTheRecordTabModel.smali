.class public Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;
.super Ljava/lang/Object;
.source "OffTheRecordTabModel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModel;


# instance fields
.field private final mDelegate:Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;

.field private mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field private mIsAddingTab:Z

.field private final mObservers:Lorg/chromium/base/ObserverList;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mObservers:Lorg/chromium/base/ObserverList;

    .line 43
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegate:Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;

    .line 44
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;->getInstance()Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 45
    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 219
    return-void
.end method

.method public addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mIsAddingTab:Z

    .line 210
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->ensureTabModelImpl()V

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mIsAddingTab:Z

    .line 213
    return-void
.end method

.method public cancelTabClosure(I)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->cancelTabClosure(I)V

    .line 205
    return-void
.end method

.method public closeAllTabs()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeAllTabs()V

    .line 128
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->destroyIncognitoIfNecessary()V

    .line 129
    return-void
.end method

.method public closeAllTabs(ZZ)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeAllTabs(ZZ)V

    .line 134
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->destroyIncognitoIfNecessary()V

    .line 135
    return-void
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    .line 109
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->destroyIncognitoIfNecessary()V

    .line 110
    return v0
.end method

.method public closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    move-result v0

    .line 116
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->destroyIncognitoIfNecessary()V

    .line 117
    return v0
.end method

.method public commitAllTabClosures()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->commitAllTabClosures()V

    .line 193
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->destroyIncognitoIfNecessary()V

    goto :goto_0
.end method

.method public commitTabClosure(I)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->commitTabClosure(I)V

    .line 199
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->destroyIncognitoIfNecessary()V

    .line 200
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->destroy()V

    .line 170
    return-void
.end method

.method protected destroyIncognitoIfNecessary()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 72
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    instance-of v0, v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mIsAddingTab:Z

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->destroy()V

    .line 81
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegate:Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;->doOffTheRecordTabsExist()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->destroyWhenAppropriate()V

    .line 85
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;->getInstance()Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    goto :goto_0
.end method

.method protected ensureTabModelImpl()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    instance-of v0, v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegate:Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;->createTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 55
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0
.end method

.method public getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    return v0
.end method

.method protected getDelegateModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    return-object v0
.end method

.method public getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    instance-of v0, v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;

    .line 96
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->isNativeInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    goto :goto_0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public index()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->indexOf(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v0

    return v0
.end method

.method public isClosurePending(I)Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isClosurePending(I)Z

    move-result v0

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public moveTab(II)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->moveTab(II)V

    .line 165
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 225
    return-void
.end method

.method public removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 230
    return-void
.end method

.method public setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 160
    return-void
.end method

.method public supportsPendingClosures()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->mDelegateModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->supportsPendingClosures()Z

    move-result v0

    return v0
.end method
