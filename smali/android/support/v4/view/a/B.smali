.class final Landroid/support/v4/view/a/B;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompatKitKat.java"


# instance fields
.field private synthetic a:Landroid/support/v4/view/a/C;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/C;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Landroid/support/v4/view/a/B;->a:Landroid/support/v4/view/a/C;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/view/a/B;->a:Landroid/support/v4/view/a/C;

    invoke-interface {v0, p1}, Landroid/support/v4/view/a/C;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/v4/view/a/B;->a:Landroid/support/v4/view/a/C;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/a/C;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/view/a/B;->a:Landroid/support/v4/view/a/C;

    invoke-interface {v0, p1}, Landroid/support/v4/view/a/C;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v4/view/a/B;->a:Landroid/support/v4/view/a/C;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/a/C;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
