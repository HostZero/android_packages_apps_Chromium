.class final Lorg/chromium/chrome/browser/share/ShareHelper$3;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adapter:Lorg/chromium/chrome/browser/share/ShareDialogAdapter;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$screenshot:Landroid/graphics/Bitmap;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/share/ShareDialogAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$adapter:Lorg/chromium/chrome/browser/share/ShareDialogAdapter;

    iput-object p2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$screenshot:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$adapter:Lorg/chromium/chrome/browser/share/ShareDialogAdapter;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/share/ShareDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 281
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 282
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$activity:Landroid/app/Activity;

    # invokes: Lorg/chromium/chrome/browser/share/ShareHelper;->setLastShareComponentName(Landroid/content/Context;Landroid/content/ComponentName;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/share/ShareHelper;->access$000(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 285
    iget-object v0, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$screenshot:Landroid/graphics/Bitmap;

    # invokes: Lorg/chromium/chrome/browser/share/ShareHelper;->makeIntentAndShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V
    invoke-static {v0, v2, v3, v4, v1}, Lorg/chromium/chrome/browser/share/ShareHelper;->access$300(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V

    .line 286
    iget-object v0, p0, Lorg/chromium/chrome/browser/share/ShareHelper$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 287
    return-void
.end method
