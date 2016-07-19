.class public Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessibilityTabModelAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field private final mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

.field private final mContext:Landroid/content/Context;

.field private final mInternalListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

.field private mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;

.field private mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$1;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mInternalListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    .line 92
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;)Lorg/chromium/chrome/browser/tabmodel/TabList;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->getItemId(I)J

    move-result-wide v0

    long-to-int v1, v0

    .line 132
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_0
    instance-of v0, p2, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    if-eqz v0, :cond_1

    .line 136
    check-cast p2, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    .line 142
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->supportsPendingClosures()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mInternalListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mCanScrollListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    invoke-virtual {p2, v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->setListeners(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$AccessibilityTabModelListItemListener;Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;)V

    .line 145
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->resetState()V

    .line 147
    return-object p2

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->accessibility_tab_switcher_list_item:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    move-object p2, v0

    goto :goto_0
.end method

.method public setListener(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mListener:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;

    .line 111
    return-void
.end method

.method public setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mActualTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 101
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->mUndoneTabModel:Lorg/chromium/chrome/browser/tabmodel/TabList;

    .line 102
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
