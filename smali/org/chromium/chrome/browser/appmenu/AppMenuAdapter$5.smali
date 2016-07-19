.class Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppMenuAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

.field final synthetic val$maxViewsToAnimate:I

.field final synthetic val$views:[Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;I[Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$5;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    iput p2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$5;->val$maxViewsToAnimate:I

    iput-object p3, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$5;->val$views:[Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 387
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$5;->val$maxViewsToAnimate:I

    if-ge v0, v1, :cond_0

    .line 388
    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$5;->val$views:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method
