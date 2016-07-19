.class public Lorg/chromium/ui/widget/TextViewWithClickableSpans;
.super Landroid/widget/TextView;
.source "TextViewWithClickableSpans.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->openDisambiguationMenu()V

    return-void
.end method

.method private handleAccessibilityClick()V
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getClickableSpans()[Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 140
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->openDisambiguationMenu()V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setSaveEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 57
    new-instance v0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;-><init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V

    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    return-void
.end method

.method private openDisambiguationMenu()V
    .locals 9

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getClickableSpans()[Landroid/text/style/ClickableSpan;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 151
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 152
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    .line 153
    array-length v5, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v2, v1

    .line 154
    invoke-virtual {v0, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v0, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 157
    invoke-interface {v4, v7}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 158
    new-instance v8, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;

    invoke-direct {v8, p0, v6}, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;-><init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;Landroid/text/style/ClickableSpan;)V

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method private touchIntersectsAnyClickableSpans(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    instance-of v2, v0, Landroid/text/SpannableString;

    if-nez v2, :cond_0

    move v0, v1

    .line 120
    :goto_0
    return v0

    .line 103
    :cond_0
    check-cast v0, Landroid/text/SpannableString;

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 108
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 109
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 111
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 112
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 114
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 115
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 116
    int-to-float v2, v2

    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 118
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, v2, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 120
    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getClickableSpans()[Landroid/text/style/ClickableSpan;
    .locals 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 129
    instance-of v1, v0, Landroid/text/SpannableString;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 131
    :cond_0
    check-cast v0, Landroid/text/SpannableString;

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->touchIntersectsAnyClickableSpans(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->handleAccessibilityClick()V

    .line 91
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->handleAccessibilityClick()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
