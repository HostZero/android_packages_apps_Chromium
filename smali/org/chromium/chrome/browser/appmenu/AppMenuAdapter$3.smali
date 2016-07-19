.class Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$3;
.super Ljava/lang/Object;
.source "AppMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$3;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    iput-object p2, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$3;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$3;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->mAppMenu:Lorg/chromium/chrome/browser/appmenu/AppMenu;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;->access$000(Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter;)Lorg/chromium/chrome/browser/appmenu/AppMenu;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$3;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->onItemClick(Landroid/view/MenuItem;)V

    .line 317
    return-void
.end method
