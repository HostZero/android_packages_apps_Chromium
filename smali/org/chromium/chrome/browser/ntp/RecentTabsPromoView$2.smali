.class Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$2;
.super Ljava/lang/Object;
.source "RecentTabsPromoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->mModel:Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;->access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView;)Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;->enableSync()V

    .line 245
    return-void
.end method
