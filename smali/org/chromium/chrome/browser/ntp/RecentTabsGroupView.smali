.class public Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;
.super Landroid/widget/RelativeLayout;
.source "RecentTabsGroupView.java"


# instance fields
.field private mDeviceIcon:Landroid/widget/ImageView;

.field private mDeviceLabel:Landroid/widget/TextView;

.field private mDeviceLabelCollapsedColor:I

.field private mDeviceLabelExpandedColor:I

.field private mExpandCollapseIcon:Landroid/widget/ImageView;

.field private mTimeLabel:Landroid/widget/TextView;

.field private mTimeLabelCollapsedColor:I

.field private mTimeLabelExpandedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    sget v1, Lorg/chromium/chrome/R$color;->light_active_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabelExpandedColor:I

    .line 52
    sget v1, Lorg/chromium/chrome/R$color;->ntp_list_header_text:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabelCollapsedColor:I

    .line 54
    sget v1, Lorg/chromium/chrome/R$color;->ntp_list_header_subtext_active:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabelExpandedColor:I

    .line 56
    sget v1, Lorg/chromium/chrome/R$color;->ntp_list_header_subtext:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabelCollapsedColor:I

    .line 58
    return-void
.end method

.method private configureExpandedCollapsed(Z)V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    sget v0, Lorg/chromium/chrome/R$string;->ntp_recent_tabs_accessibility_expanded_group:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mExpandCollapseIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 153
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mExpandCollapseIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 156
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabelExpandedColor:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabelExpandedColor:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    return-void

    .line 147
    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->ntp_recent_tabs_accessibility_collapsed_group:I

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 156
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabelCollapsedColor:I

    goto :goto_2

    .line 159
    :cond_3
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabelCollapsedColor:I

    goto :goto_3
.end method

.method private getTimeString(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->modifiedTime:J

    sub-long/2addr v0, v4

    .line 164
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 166
    :cond_0
    const-wide/32 v4, 0x5265c00

    div-long v4, v0, v4

    long-to-int v4, v4

    .line 167
    const-wide/32 v6, 0x36ee80

    div-long v6, v0, v6

    long-to-int v5, v6

    .line 168
    const-wide/32 v6, 0xea60

    div-long/2addr v0, v6

    long-to-int v0, v0

    .line 170
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 172
    int-to-long v6, v4

    cmp-long v6, v6, v2

    if-lez v6, :cond_1

    .line 173
    sget v0, Lorg/chromium/chrome/R$plurals;->n_days_ago:I

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->ntp_recent_tabs_last_synced:I

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_1
    int-to-long v6, v5

    cmp-long v4, v6, v2

    if-lez v4, :cond_2

    .line 175
    sget v0, Lorg/chromium/chrome/R$plurals;->n_hours_ago:I

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_2
    int-to-long v4, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 177
    sget v2, Lorg/chromium/chrome/R$plurals;->n_minutes_ago:I

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_3
    sget v0, Lorg/chromium/chrome/R$string;->just_now:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static replaceRule(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 206
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    return-void
.end method

.method private setTimeLabelVisibility(I)V
    .locals 3

    .prologue
    const/16 v2, 0xf

    const/16 v1, 0xa

    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->replaceRule(Landroid/view/View;II)V

    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabel:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->replaceRule(Landroid/view/View;II)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->replaceRule(Landroid/view/View;II)V

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabel:Landroid/widget/TextView;

    invoke-static {v0, v2, v1}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->replaceRule(Landroid/view/View;II)V

    goto :goto_0
.end method


# virtual methods
.method public configureForCurrentlyOpenTabs(Z)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/chromium/chrome/R$drawable;->recent_tablet:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->recent_tabs_this_device:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->setTimeLabelVisibility(I)V

    .line 92
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->configureExpandedCollapsed(Z)V

    .line 93
    return-void

    .line 87
    :cond_0
    sget v0, Lorg/chromium/chrome/R$drawable;->recent_phone:I

    goto :goto_0
.end method

.method public configureForForeignSession(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->setTimeLabelVisibility(I)V

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getTimeString(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget v0, p1, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;->deviceType:I

    packed-switch v0, :pswitch_data_0

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    sget v1, Lorg/chromium/chrome/R$drawable;->recent_laptop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    :goto_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->configureExpandedCollapsed(Z)V

    .line 118
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    sget v1, Lorg/chromium/chrome/R$drawable;->recent_phone:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    sget v1, Lorg/chromium/chrome/R$drawable;->recent_tablet:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public configureForRecentlyClosedTabs(Z)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    sget v1, Lorg/chromium/chrome/R$drawable;->recent_recently_closed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabel:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->recently_closed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->setTimeLabelVisibility(I)V

    .line 130
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->configureExpandedCollapsed(Z)V

    .line 131
    return-void
.end method

.method public configureForSyncPromo(Z)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    sget v1, Lorg/chromium/chrome/R$drawable;->recent_laptop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabel:Landroid/widget/TextView;

    sget v1, Lorg/chromium/chrome/R$string;->ntp_recent_tabs_sync_promo_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->setTimeLabelVisibility(I)V

    .line 143
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->configureExpandedCollapsed(Z)V

    .line 144
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 63
    sget v0, Lorg/chromium/chrome/R$id;->device_icon:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceIcon:Landroid/widget/ImageView;

    .line 64
    sget v0, Lorg/chromium/chrome/R$id;->time_label:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mTimeLabel:Landroid/widget/TextView;

    .line 65
    sget v0, Lorg/chromium/chrome/R$id;->device_label:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mDeviceLabel:Landroid/widget/TextView;

    .line 66
    sget v0, Lorg/chromium/chrome/R$id;->expand_collapse_icon:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mExpandCollapseIcon:Landroid/widget/ImageView;

    .line 69
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 70
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->ic_expanded:I

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->ic_collapsed:I

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$color;->blue_mode_tint:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 76
    invoke-virtual {v0, v4, v4, v1}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsGroupView;->mExpandCollapseIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method
