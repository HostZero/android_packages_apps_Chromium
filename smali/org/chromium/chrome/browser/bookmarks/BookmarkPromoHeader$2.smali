.class Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$2;
.super Ljava/lang/Object;
.source "BookmarkPromoHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/chromium/chrome/browser/bookmarks/BookmarkSigninActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
