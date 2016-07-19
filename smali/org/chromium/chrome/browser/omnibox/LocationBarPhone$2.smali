.class Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$2;
.super Ljava/lang/Object;
.source "LocationBarPhone.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

.field final synthetic val$helper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$2;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$2;->val$helper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 112
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone$2;->val$helper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->onEnterKeyPress(Landroid/view/View;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
