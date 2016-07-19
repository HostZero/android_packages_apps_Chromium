.class public Lorg/chromium/chrome/browser/BluetoothChooserDialog;
.super Ljava/lang/Object;
.source "BluetoothChooserDialog.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DIALOG_FINISHED_CANCELLED:I = 0x1

.field static final DIALOG_FINISHED_DENIED_PERMISSION:I = 0x0

.field static final DIALOG_FINISHED_SELECTED:I = 0x2

.field static final DISCOVERING:I = 0x1

.field static final DISCOVERY_FAILED_TO_START:I = 0x0

.field static final DISCOVERY_IDLE:I = 0x2


# instance fields
.field final mContext:Landroid/content/Context;

.field mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

.field mNativeBluetoothChooserDialogPtr:J

.field mOrigin:Ljava/lang/String;

.field mSecurityLevel:I

.field final mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 87
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    .line 88
    sget-boolean v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    iput-object p2, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mOrigin:Ljava/lang/String;

    .line 90
    iput p3, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mSecurityLevel:I

    .line 91
    iput-wide p4, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    .line 92
    return-void
.end method

.method private checkLocationPermission()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 182
    iget-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v9, v2}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeOnDialogFinished(JILjava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->bluetooth_need_location_permission:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v2, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v3, "<link>"

    const-string/jumbo v4, "</link>"

    new-instance v5, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v6, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->REQUEST_LOCATION_PERMISSION:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v7, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v7}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/chrome/R$string;->bluetooth_need_location_permission_help:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v4, "<link>"

    const-string/jumbo v5, "</link>"

    new-instance v6, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v7, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->NEED_LOCATION_PERMISSION_HELP:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v8, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v8}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v3, v4, v5, v6}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-virtual {v2, v0, v1}, Lorg/chromium/chrome/browser/ItemChooserDialog;->setErrorState(Landroid/text/SpannableString;Landroid/text/SpannableString;)V

    goto :goto_0
.end method

.method private static create(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)Lorg/chromium/chrome/browser/BluetoothChooserDialog;
    .locals 7

    .prologue
    .line 279
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;-><init>(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)V

    .line 289
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->show()V

    goto :goto_0
.end method

.method private notifyAdapterTurnedOn()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->clear()V

    .line 333
    iget-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 334
    iget-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeRestartSearch(J)V

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method addDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v1, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;

    invoke-direct {v1, p1, p2}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->addItemsToList(Ljava/util/List;)V

    .line 300
    return-void
.end method

.method closeDialog()V
    .locals 2

    .prologue
    .line 305
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    .line 306
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->dismiss()V

    .line 307
    return-void
.end method

.method native nativeOnDialogFinished(JILjava/lang/String;)V
.end method

.method native nativeRestartSearch(J)V
.end method

.method native nativeShowBluetoothAdapterOffLink(J)V
.end method

.method native nativeShowBluetoothOverviewLink(J)V
.end method

.method native nativeShowNeedLocationPermissionLink(J)V
.end method

.method notifyAdapterTurnedOff()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->bluetooth_adapter_off:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v2, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v3, "<link>"

    const-string/jumbo v4, "</link>"

    new-instance v5, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v6, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->ADAPTER_OFF:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v7, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v7}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/chrome/R$string;->bluetooth_adapter_off_help:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v4, "<link>"

    const-string/jumbo v5, "</link>"

    new-instance v6, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v7, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->ADAPTER_OFF_HELP:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v8, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v8}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v3, v4, v5, v6}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v1

    .line 327
    iget-object v2, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-virtual {v2, v0, v1}, Lorg/chromium/chrome/browser/ItemChooserDialog;->setErrorState(Landroid/text/SpannableString;Landroid/text/SpannableString;)V

    .line 328
    return-void
.end method

.method notifyDiscoveryState(I)V
    .locals 1

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 357
    :goto_0
    :pswitch_0
    return-void

    .line 345
    :pswitch_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->checkLocationPermission()V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->setIdleState()V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    const/4 v2, 0x1

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeOnDialogFinished(JILjava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeOnDialogFinished(JILjava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 161
    aget-object v1, p1, v0

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    aget v0, p2, v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ItemChooserDialog;->clear()V

    .line 164
    iget-wide v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mNativeBluetoothChooserDialogPtr:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->nativeRestartSearch(J)V

    .line 172
    :cond_0
    :goto_1
    return-void

    .line 166
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->checkLocationPermission()V

    goto :goto_1

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeDevice(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/ItemChooserDialog;->setEnabled(Ljava/lang/String;Z)V

    .line 313
    return-void
.end method

.method show()V
    .locals 15

    .prologue
    .line 100
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    .line 101
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mOrigin:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mSecurityLevel:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->emphasizeUrl(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 105
    new-instance v4, Landroid/text/SpannableString;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/chrome/R$string;->bluetooth_dialog_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mOrigin:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mOrigin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->bluetooth_not_found:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v2, 0x0

    new-instance v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<link>"

    const-string/jumbo v6, "</link>"

    new-instance v7, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v8, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->RESTART_SEARCH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v9, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8, v9}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v3, v5, v6, v7}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v6

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->bluetooth_searching:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v2, 0x0

    new-instance v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v5, "<link>"

    const-string/jumbo v7, "</link>"

    new-instance v8, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v9, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v10, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9, v10}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v3, v5, v7, v8}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v5

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->bluetooth_confirm_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->bluetooth_not_seeing_it:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v2, 0x0

    new-instance v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v7, "<link>"

    const-string/jumbo v8, "</link>"

    new-instance v9, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v11, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v12, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v11, v12}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v3, v7, v8, v9}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v7

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->bluetooth_not_seeing_it_idle_none_found:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v2, 0x0

    new-instance v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v8, "<link>"

    const-string/jumbo v9, "</link>"

    new-instance v11, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v12, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v13, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12, v13}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v3, v8, v9, v11}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v8

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->bluetooth_not_seeing_it_idle_some_found:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const/4 v2, 0x0

    new-instance v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v9, "<link1>"

    const-string/jumbo v11, "</link1>"

    new-instance v12, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v13, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v14, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, p0, v13, v14}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v3, v9, v11, v12}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v9, "<link2>"

    const-string/jumbo v11, "</link2>"

    new-instance v12, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;

    sget-object v13, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->RESTART_SEARCH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    iget-object v14, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, p0, v13, v14}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$NoUnderlineClickableSpan;-><init>(Lorg/chromium/chrome/browser/BluetoothChooserDialog;Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;Landroid/content/Context;)V

    invoke-direct {v3, v9, v11, v12}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v9

    .line 139
    new-instance v3, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;

    invoke-direct/range {v3 .. v10}, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;-><init>(Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/text/SpannableString;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lorg/chromium/chrome/browser/ItemChooserDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v3}, Lorg/chromium/chrome/browser/ItemChooserDialog;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ItemChooserDialog$ItemSelectedCallback;Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/BluetoothChooserDialog;->mItemChooserDialog:Lorg/chromium/chrome/browser/ItemChooserDialog;

    .line 143
    return-void
.end method
