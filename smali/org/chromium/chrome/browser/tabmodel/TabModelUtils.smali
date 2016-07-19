.class public Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;
.super Ljava/lang/Object;
.source "TabModelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabModel;)Z
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    goto :goto_0
.end method

.method public static closeTabById(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->closeTabById(Lorg/chromium/chrome/browser/tabmodel/TabModel;IZ)Z

    move-result v0

    return v0
.end method

.method public static closeTabById(Lorg/chromium/chrome/browser/tabmodel/TabModel;IZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    invoke-interface {p0, v1, v2, v0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public static closeTabByIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Z
    .locals 1

    .prologue
    .line 23
    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getCurrentContentViewCore(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 138
    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .prologue
    .line 126
    invoke-interface {p0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->index()I

    move-result v0

    .line 127
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentTabId(Lorg/chromium/chrome/browser/tabmodel/TabList;)I
    .locals 1

    .prologue
    .line 114
    invoke-static {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public static getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .prologue
    .line 87
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v0

    .line 88
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I
    .locals 3

    .prologue
    .line 70
    invoke-interface {p0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getCount()I

    move-result v1

    .line 72
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 73
    invoke-interface {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 77
    :goto_1
    return v0

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getTabIndexByUrl(Lorg/chromium/chrome/browser/tabmodel/TabList;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 99
    invoke-interface {p0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getCount()I

    move-result v1

    .line 101
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 102
    invoke-interface {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :goto_1
    return v0

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-interface {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 152
    return-void
.end method
