.class final Lorg/chromium/chrome/browser/signin/AccountManagementFragment$7;
.super Ljava/lang/Object;
.source "AccountManagementFragment.java"

# interfaces
.implements Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;


# virtual methods
.method public final onProfileDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$7;->val$accountName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-static {p1, p2, p4}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->updateUserNamePictureCache(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 667
    invoke-static {p0}, Lorg/chromium/chrome/browser/profiles/ProfileDownloader;->removeObserver(Lorg/chromium/chrome/browser/profiles/ProfileDownloader$Observer;)V

    .line 669
    :cond_0
    return-void
.end method
