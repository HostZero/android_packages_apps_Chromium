.class Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$1;
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
    .line 104
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "Stars_SignInPromoHeader_Dismissed"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->setSigninPromoDeclined()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;)V

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->updateShouldShow(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkPromoHeader;Z)V

    .line 110
    return-void
.end method
