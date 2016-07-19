.class final Landroid/support/v7/app/aq;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/aj;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/aj;B)V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0, p1}, Landroid/support/v7/app/aq;-><init>(Landroid/support/v7/app/aj;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x1020019

    const/4 v0, 0x1

    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 814
    if-eq v1, v3, :cond_0

    const v2, 0x102001a

    if-ne v1, v2, :cond_4

    .line 815
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v2}, Landroid/support/v7/app/aj;->i(Landroid/support/v7/app/aj;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 816
    iget-object v2, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v2}, Landroid/support/v7/app/aj;->m(Landroid/support/v7/app/aj;)Landroid/support/v7/media/MediaRouter;

    move-result-object v2

    if-ne v1, v3, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {v2, v0}, Landroid/support/v7/media/MediaRouter;->a(I)V

    .line 820
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-virtual {v0}, Landroid/support/v7/app/aj;->dismiss()V

    .line 844
    :cond_3
    :goto_0
    return-void

    .line 821
    :cond_4
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_control_play_pause:I

    if-ne v1, v2, :cond_8

    .line 822
    iget-object v1, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->k(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/g;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->n(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 823
    iget-object v1, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->n(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 824
    :goto_1
    if-eqz v0, :cond_6

    .line 825
    iget-object v1, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->k(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/g;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/g;->a()Landroid/support/v4/media/session/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/q;->b()V

    .line 830
    :goto_2
    iget-object v1, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->o(Landroid/support/v7/app/aj;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->o(Landroid/support/v7/app/aj;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 831
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 833
    iget-object v2, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v2}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 834
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 835
    if-eqz v0, :cond_7

    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_pause:I

    .line 837
    :goto_3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v3}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v0, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->o(Landroid/support/v7/app/aj;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0

    .line 823
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 827
    :cond_6
    iget-object v1, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->k(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/g;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/g;->a()Landroid/support/v4/media/session/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/q;->a()V

    goto :goto_2

    .line 835
    :cond_7
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_play:I

    goto :goto_3

    .line 841
    :cond_8
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_close:I

    if-ne v1, v0, :cond_3

    .line 842
    iget-object v0, p0, Landroid/support/v7/app/aq;->a:Landroid/support/v7/app/aj;

    invoke-virtual {v0}, Landroid/support/v7/app/aj;->dismiss()V

    goto/16 :goto_0
.end method
