.class Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;
.super Ljava/lang/Object;
.source "RecentTabsRowAdapter.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$viewHolder:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->val$viewHolder:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;

    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 729
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->val$viewHolder:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->imageCallback:Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;

    if-eq p0, v0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # invokes: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->faviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$600(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 731
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mDefaultFavicon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$700(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 732
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->mFaviconCache:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;->access$800(Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter;)Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$FaviconCache;->putLocalFaviconImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 733
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$1;->val$viewHolder:Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;

    iget-object v1, v1, Lorg/chromium/chrome/browser/ntp/RecentTabsRowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {v1, v0, v3, v3, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
