.class public Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;
.super Landroid/widget/FrameLayout;
.source "EmptyBackgroundViewTablet.java"


# instance fields
.field private mAnimateInAnimation:Landroid/animation/Animator;

.field private mAnimateOutAnimation:Landroid/animation/Animator;

.field private mCurrentTransitionAnimation:Landroid/animation/Animator;

.field private mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mCurrentTransitionAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method private buildAnimatorSets()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$style;->ToolbarButton:I

    new-array v2, v6, [I

    const v3, 0x10100f5

    aput v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    sget v0, Lorg/chromium/chrome/R$id;->empty_layout_button_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v8, [F

    neg-int v4, v1

    int-to-float v4, v4

    aput v4, v3, v5

    aput v7, v3, v6

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateInAnimation:Landroid/animation/Animator;

    .line 133
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateInAnimation:Landroid/animation/Animator;

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 135
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateInAnimation:Landroid/animation/Animator;

    new-instance v3, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$3;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$3;-><init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v8, [F

    aput v7, v3, v5

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v3, v6

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateOutAnimation:Landroid/animation/Animator;

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateOutAnimation:Landroid/animation/Animator;

    new-instance v1, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$4;-><init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    sget v0, Lorg/chromium/chrome/R$id;->empty_new_tab_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    new-instance v1, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$1;-><init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->buildAnimatorSets()V

    .line 65
    return-void
.end method

.method public setEmptyContainerState(Z)V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mCurrentTransitionAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateInAnimation:Landroid/animation/Animator;

    if-eq v1, v2, :cond_3

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateInAnimation:Landroid/animation/Animator;

    .line 111
    invoke-static {p0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 117
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 118
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mCurrentTransitionAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mCurrentTransitionAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 119
    :cond_1
    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mCurrentTransitionAnimation:Landroid/animation/Animator;

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mCurrentTransitionAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 122
    :cond_2
    return-void

    .line 112
    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mCurrentTransitionAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateOutAnimation:Landroid/animation/Animator;

    if-eq v1, v2, :cond_0

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mAnimateOutAnimation:Landroid/animation/Animator;

    goto :goto_0
.end method

.method public setMenuOnTouchListener(Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V
    .locals 2

    .prologue
    .line 94
    sget v0, Lorg/chromium/chrome/R$id;->empty_menu_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 95
    new-instance v1, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;-><init>(Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    new-instance v0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet$2;-><init>(Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;)V

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->setOnAppMenuShownListener(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public setTabCreator(Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 87
    return-void
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 2

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 75
    sget v0, Lorg/chromium/chrome/R$id;->empty_incognito_toggle_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;

    .line 78
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/incognitotoggle/IncognitoToggleButtonTablet;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 79
    return-void
.end method
