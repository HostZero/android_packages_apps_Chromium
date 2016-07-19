.class Landroid/support/v4/view/a/j;
.super Landroid/support/v4/view/a/q;
.source "AccessibilityNodeInfoCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1758
    invoke-direct {p0}, Landroid/support/v4/view/a/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIIIZZ)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1799
    .line 4050
    invoke-static/range {p1 .. p6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 1799
    return-object v0
.end method

.method public final a(IIZI)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1772
    .line 3044
    invoke-static {p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 1772
    return-object v0
.end method

.method public final a(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1761
    .line 2089
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1761
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1783
    .line 4039
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v0

    .line 1783
    return v0
.end method
