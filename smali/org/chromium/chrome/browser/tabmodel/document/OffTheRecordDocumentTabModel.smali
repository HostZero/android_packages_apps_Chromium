.class public Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;
.super Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;
.source "OffTheRecordDocumentTabModel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;


# instance fields
.field private final mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;-><init>(Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel$OffTheRecordTabModelDelegate;)V

    .line 29
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->getTasksFromRecents(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->ensureTabModelImpl()V

    .line 33
    :cond_0
    return-void
.end method

.method private getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addInitializationObserver(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->ensureTabModelImpl()V

    .line 138
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->addInitializationObserver(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;)V

    .line 139
    return-void
.end method

.method public addTab(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->ensureTabModelImpl()V

    .line 110
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->addTab(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 111
    return-void
.end method

.method public closeTabAt(I)Z
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->closeTabAt(I)Z

    move-result v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->destroyIncognitoIfNecessary()V

    .line 120
    return v0
.end method

.method protected destroyIncognitoIfNecessary()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/OffTheRecordTabModel;->destroyIncognitoIfNecessary()V

    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->mActivityDelegate:Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;->isIncognitoDocumentAccessibleToUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lorg/chromium/chrome/browser/document/IncognitoNotificationManager;->dismissIncognitoNotification()V

    .line 46
    :cond_0
    return-void
.end method

.method public getCurrentInitializationStage()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getCurrentInitializationStage()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentUrlForDocument(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getCurrentUrlForDocument(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInitialUrlForDocument(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getInitialUrlForDocument(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTabStateForDocument(I)Lorg/chromium/chrome/browser/TabState;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getTabStateForDocument(I)Lorg/chromium/chrome/browser/TabState;

    move-result-object v0

    goto :goto_0
.end method

.method public hasEntryForTabId(I)Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->hasEntryForTabId(I)Z

    move-result v0

    goto :goto_0
.end method

.method public initializeNative()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->initializeNative()V

    goto :goto_0
.end method

.method public isDocumentTabModelImplCreated()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNativeInitialized()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->isNativeInitialized()Z

    move-result v0

    goto :goto_0
.end method

.method public isRetargetable(I)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->isRetargetable(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isTabStateReady(I)Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->isTabStateReady(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setLastShownId(I)Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->setLastShownId(I)Z

    move-result v0

    goto :goto_0
.end method

.method public startTabStateLoad()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->ensureTabModelImpl()V

    .line 150
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->startTabStateLoad()V

    .line 151
    return-void
.end method

.method public updateEntry(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->updateEntry(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method

.method public updateRecentlyClosed()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->isDocumentTabModelImplCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->getDelegateDocumentTabModel()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->updateRecentlyClosed()V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/OffTheRecordDocumentTabModel;->destroyIncognitoIfNecessary()V

    .line 75
    return-void
.end method
