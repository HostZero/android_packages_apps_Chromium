.class Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShareHelper.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

.field private static sTargetChosenReceiveAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static isSupported()Z
    .locals 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sendChooserIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 104
    sget-object v1, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    sget-object v2, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    if-eqz v2, :cond_1

    .line 111
    sget-object v2, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    :cond_1
    new-instance v2, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;-><init>()V

    sput-object v2, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    .line 114
    sget-object v2, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    sget-object v4, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sTargetChosenReceiveAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "receiver_token"

    sget-object v2, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const/4 v1, 0x0

    const/high16 v2, 0x50000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 123
    sget v1, Lorg/chromium/chrome/R$string;->share_link_chooser_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 131
    sget-object v1, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    if-eq v0, p0, :cond_1

    monitor-exit v1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;->sLastRegisteredReceiver:Lorg/chromium/chrome/browser/share/ShareHelper$TargetChosenReceiver;

    .line 135
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const-string/jumbo v0, "receiver_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "receiver_token"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 141
    const-string/jumbo v0, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    # invokes: Lorg/chromium/chrome/browser/share/ShareHelper;->setLastShareComponentName(Landroid/content/Context;Landroid/content/ComponentName;)V
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/share/ShareHelper;->access$000(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
