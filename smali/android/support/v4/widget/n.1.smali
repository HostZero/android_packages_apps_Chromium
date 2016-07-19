.class final Landroid/support/v4/widget/n;
.super Landroid/support/v4/view/a;
.source "DrawerLayout.java"


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private synthetic b:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    .prologue
    .line 2005
    iput-object p1, p0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 2006
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/n;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 2055
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 2056
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2057
    iget-object v1, p0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;

    move-result-object v1

    .line 2058
    if-eqz v1, :cond_1

    .line 2059
    iget-object v2, p0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v1

    .line 2060
    iget-object v2, p0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 4668
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/n;->a(II)I

    move-result v1

    .line 4670
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 4675
    :cond_0
    const/4 v1, 0x0

    .line 2061
    if-eqz v1, :cond_1

    .line 2062
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_1
    const/4 v0, 0x1

    .line 2069
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2043
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2045
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2046
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/h;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2010
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2011
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 2030
    :cond_0
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->b(Ljava/lang/CharSequence;)V

    .line 2035
    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/h;->a(Z)V

    .line 2036
    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/h;->b(Z)V

    .line 2037
    sget-object v0, Landroid/support/v4/view/a/i;->a:Landroid/support/v4/view/a/i;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(Landroid/support/v4/view/a/i;)Z

    .line 2038
    sget-object v0, Landroid/support/v4/view/a/i;->b:Landroid/support/v4/view/a/i;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(Landroid/support/v4/view/a/i;)Z

    .line 2039
    return-void

    .line 2015
    :cond_1
    invoke-static {p2}, Landroid/support/v4/view/a/h;->a(Landroid/support/v4/view/a/h;)Landroid/support/v4/view/a/h;

    move-result-object v2

    .line 2017
    invoke-super {p0, p1, v2}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 2019
    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/h;->b(Landroid/view/View;)V

    .line 2020
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->h(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 2021
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2022
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->d(Landroid/view/View;)V

    .line 3098
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/n;->a:Landroid/graphics/Rect;

    .line 3100
    invoke-virtual {v2, v0}, Landroid/support/v4/view/a/h;->a(Landroid/graphics/Rect;)V

    .line 3101
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->b(Landroid/graphics/Rect;)V

    .line 3103
    invoke-virtual {v2, v0}, Landroid/support/v4/view/a/h;->c(Landroid/graphics/Rect;)V

    .line 3104
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->d(Landroid/graphics/Rect;)V

    .line 3106
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->f()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->c(Z)V

    .line 3107
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->l()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(Ljava/lang/CharSequence;)V

    .line 3108
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->m()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->b(Ljava/lang/CharSequence;)V

    .line 3109
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->c(Ljava/lang/CharSequence;)V

    .line 3111
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->k()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->h(Z)V

    .line 3112
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->i()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->f(Z)V

    .line 3113
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(Z)V

    .line 3114
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->e()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->b(Z)V

    .line 3115
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->g()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->d(Z)V

    .line 3116
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->h()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->e(Z)V

    .line 3117
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->j()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->g(Z)V

    .line 3119
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(I)V

    .line 2025
    invoke-virtual {v2}, Landroid/support/v4/view/a/h;->p()V

    .line 2027
    check-cast p1, Landroid/view/ViewGroup;

    .line 4082
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    .line 4083
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4084
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4085
    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4086
    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/h;->c(Landroid/view/View;)V

    .line 4083
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 2075
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2076
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2078
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
