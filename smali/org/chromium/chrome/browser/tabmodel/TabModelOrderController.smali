.class public Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;
.super Ljava/lang/Object;
.source "TabModelOrderController.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 22
    return-void
.end method

.method private getIndexOfLastTabOpenedBy(II)I
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    .line 96
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 97
    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getParentId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isGroupedWithParent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    :goto_1
    return v0

    .line 96
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static linkClicked(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Z
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sameModelType(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 2

    .prologue
    .line 143
    invoke-interface {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public determineInsertionIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ILorg/chromium/chrome/browser/tab/Tab;)I
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->linkClicked(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->determineInsertionIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result p2

    .line 37
    :cond_0
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->willOpenInForeground(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->forgetAllOpeners()V

    .line 43
    :cond_1
    return p2
.end method

.method public determineInsertionIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    sget-boolean v1, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 59
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    .line 60
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v2

    .line 62
    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->sameModelType(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->willOpenInForeground(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->getIndexOfLastTabOpenedBy(II)I

    move-result v0

    .line 71
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_3
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 79
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method forgetAllOpeners()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v3

    move v0, v1

    .line 111
    :goto_0
    if-ge v0, v3, :cond_0

    .line 112
    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setGroupedWithParent(Z)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public willOpenInForeground(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 134
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p1, v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelOrderController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
