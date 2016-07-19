.class public Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;
.super Landroid/widget/LinearLayout;
.source "AccessibilityTabModelWrapper.java"


# instance fields
.field private mAccessibilityView:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

.field private mIncognitoButton:Landroid/widget/ImageButton;

.field private mIsAttachedToWindow:Z

.field private mStackButtonWrapper:Landroid/widget/LinearLayout;

.field private mStandardButton:Landroid/widget/ImageButton;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$1;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getAdapter()Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method private getAdapter()Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mAccessibilityView:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mIsAttachedToWindow:Z

    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 162
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mIsAttachedToWindow:Z

    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 168
    return-void
.end method

.method public setStateBasedOnModel()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v2, :cond_0

    .line 151
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabList;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 130
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v2

    .line 132
    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mStackButtonWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :goto_2
    if-eqz v2, :cond_3

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mIncognitoButton:Landroid/widget/ImageButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_bg_holo_active:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mStandardButton:Landroid/widget/ImageButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_bg_holo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mAccessibilityView:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->accessibility_tab_switcher_incognito_stack:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    :goto_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getAdapter()Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 127
    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mStackButtonWrapper:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 144
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mIncognitoButton:Landroid/widget/ImageButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_bg_holo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mStandardButton:Landroid/widget/ImageButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_bg_holo_active:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mAccessibilityView:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$string;->accessibility_tab_switcher_standard_stack:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 113
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 114
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->setStateBasedOnModel()V

    .line 118
    return-void
.end method

.method public setup(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;)V
    .locals 3

    .prologue
    .line 90
    sget v0, Lorg/chromium/chrome/R$id;->button_wrapper:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mStackButtonWrapper:Landroid/widget/LinearLayout;

    .line 92
    sget v0, Lorg/chromium/chrome/R$id;->standard_tabs_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mStandardButton:Landroid/widget/ImageButton;

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mStandardButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v0, Lorg/chromium/chrome/R$id;->incognito_tabs_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mIncognitoButton:Landroid/widget/ImageButton;

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mIncognitoButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper$ButtonOnClickListener;-><init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v0, Lorg/chromium/chrome/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->mAccessibilityView:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;

    .line 100
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelWrapper;->getAdapter()Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;->setListener(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter$AccessibilityTabModelAdapterListener;)V

    .line 103
    return-void
.end method
