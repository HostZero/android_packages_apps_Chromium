.class public final Landroid/support/v7/widget/s;
.super Landroid/widget/Button;
.source "AppCompatButton.java"

# interfaces
.implements Landroid/support/v4/view/W;


# instance fields
.field private final a:Landroid/support/v7/internal/widget/L;

.field private final b:Landroid/support/v7/widget/r;

.field private final c:Landroid/support/v7/widget/M;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0100c6

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/L;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/L;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/internal/widget/L;

    .line 67
    new-instance v0, Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/internal/widget/L;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/L;)V

    iput-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/r;->a(Landroid/util/AttributeSet;I)V

    .line 70
    invoke-static {p0}, Landroid/support/v7/widget/M;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/M;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/M;

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/M;->a(Landroid/util/AttributeSet;I)V

    .line 72
    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 73
    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()V

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 152
    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 165
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 171
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()V

    .line 89
    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 157
    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/s;->c:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/M;->a(Landroid/content/Context;I)V

    .line 160
    :cond_0
    return-void
.end method
