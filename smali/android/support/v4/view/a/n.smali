.class Landroid/support/v4/view/a/n;
.super Landroid/support/v4/view/a/l;
.source "AccessibilityNodeInfoCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1457
    invoke-direct {p0}, Landroid/support/v4/view/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1480
    .line 2033
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 1481
    return-void
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1475
    .line 2029
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 1476
    return-void
.end method

.method public final h(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1490
    .line 2041
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1491
    return-void
.end method

.method public final i(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1500
    .line 2077
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 1501
    return-void
.end method

.method public final r(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1485
    .line 2037
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    .line 1485
    return v0
.end method

.method public final s(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1495
    .line 2073
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    .line 1495
    return v0
.end method
