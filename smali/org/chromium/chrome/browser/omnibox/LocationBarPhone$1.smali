.class Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$1;
.super Ljava/lang/Object;
.source "LocationBarPhone.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

.field final synthetic val$helper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$1;->val$helper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$1;->val$helper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
