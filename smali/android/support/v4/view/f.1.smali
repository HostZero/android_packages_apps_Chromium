.class Landroid/support/v4/view/f;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Landroid/support/v4/view/j;


# instance fields
.field private synthetic a:Landroid/support/v4/view/a;


# direct methods
.method constructor <init>(Landroid/support/v4/view/e;Landroid/support/v4/view/a;)V
    .locals 0

    .prologue
    .line 219
    iput-object p2, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/t;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/a/t;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 251
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    new-instance v1, Landroid/support/v4/view/a/h;

    invoke-direct {v1, p2}, Landroid/support/v4/view/a/h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 235
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 229
    return-void
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    return-void
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v4/view/f;->a:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    return-void
.end method
