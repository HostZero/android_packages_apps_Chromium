.class public Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;
.super Landroid/widget/ImageButton;
.source "IncognitoToggleButtonTablet.java"


# instance fields
.field private mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->updateButtonResource()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->updateButtonVisibility()V

    return-void
.end method

.method private updateButtonResource()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/chromium/chrome/R$string;->accessibility_tabstrip_btn_incognito_toggle_incognito:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_switch_incognito:I

    :goto_2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_2
    sget v0, Lorg/chromium/chrome/R$string;->accessibility_tabstrip_btn_incognito_toggle_standard:I

    goto :goto_1

    .line 99
    :cond_3
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_switch_normal:I

    goto :goto_2
.end method

.method private updateButtonVisibility()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->setVisibility(I)V

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$4;-><init>(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 123
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 127
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 134
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 138
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    .line 44
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->setVisibility(I)V

    .line 47
    new-instance v0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$1;-><init>(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 3

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->updateButtonResource()V

    .line 66
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->updateButtonVisibility()V

    .line 68
    new-instance v0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$2;-><init>(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 76
    new-instance v0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet$3;-><init>(Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 88
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method
