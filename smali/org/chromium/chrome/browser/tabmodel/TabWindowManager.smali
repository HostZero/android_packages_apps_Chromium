.class public Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;
.super Ljava/lang/Object;
.source "TabWindowManager.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# static fields
.field public static final INVALID_WINDOW_INDEX:I = -0x1

.field public static final MAX_SIMULTANEOUS_SELECTORS:I = 0x3

.field private static sInstance:Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;


# instance fields
.field private mAssignments:Ljava/util/Map;

.field private mSelectorFactory:Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$TabModelSelectorFactory;

.field private mSelectors:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$DefaultTabModelSelectorFactory;

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$DefaultTabModelSelectorFactory;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectorFactory:Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$TabModelSelectorFactory;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mAssignments:Ljava/util/Map;

    .line 167
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForAllActivities(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 169
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 66
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->sInstance:Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->sInstance:Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    .line 67
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->sInstance:Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    return-object v0
.end method


# virtual methods
.method public getIncognitoTabCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 138
    move v1, v0

    move v2, v0

    .line 139
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    add-int/2addr v2, v0

    .line 139
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 144
    :cond_1
    return v2
.end method

.method public getIndexForWindow(Landroid/app/Activity;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 120
    if-nez p1, :cond_1

    move v0, v1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mAssignments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 122
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 124
    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getNumberOfAssignedTabModelSelectors()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mAssignments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mAssignments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mAssignments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 151
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    return-void
.end method

.method public requestSelector(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;I)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mAssignments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mAssignments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 108
    :goto_0
    return-object v0

    .line 90
    :cond_0
    if-ltz p3, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p3, v1, :cond_2

    :cond_1
    move p3, v0

    .line 92
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 93
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 94
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    move p3, v0

    .line 102
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectorFactory:Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$TabModelSelectorFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$TabModelSelectorFactory;->buildSelector(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;I)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectors:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mAssignments:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTabModelSelectorFactory(Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$TabModelSelectorFactory;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->mSelectorFactory:Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$TabModelSelectorFactory;

    .line 164
    return-void
.end method
