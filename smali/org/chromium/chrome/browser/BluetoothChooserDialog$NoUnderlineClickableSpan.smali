.class Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "BluetoothChooserDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLinkType:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

.field final synthetic this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const-class v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 213
    iput-object p2, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->mLinkType:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    .line 214
    iput-object p3, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->mContext:Landroid/content/Context;

    .line 215
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-wide v0, v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 223
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$1;->$SwitchMap$org$chromium$chrome$browser$BluetoothChooserDialog$LinkType:[I

    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->mLinkType:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    sget-boolean v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 230
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-wide v2, v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeShowBluetoothOverviewLink(J)V

    .line 265
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 234
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    const-string/jumbo v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 240
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-wide v2, v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeShowBluetoothAdapterOffLink(J)V

    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->closeDialog()V

    goto :goto_1

    .line 245
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-object v0, v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_1

    .line 251
    :pswitch_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-wide v2, v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeShowNeedLocationPermissionLink(J)V

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->closeDialog()V

    goto :goto_1

    .line 256
    :pswitch_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-object v0, v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->clear()V

    .line 257
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;->this$0:Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    iget-wide v2, v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeRestartSearch(J)V

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 271
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 272
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 273
    return-void
.end method
