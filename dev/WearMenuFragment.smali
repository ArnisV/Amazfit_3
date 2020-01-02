.class public Lcom/amazmod/service/ui/fragments/WearMenuFragment;
.super Landroid/app/Fragment;
.source "WearMenuFragment.java"

# interfaces
.implements Landroid/support/wearable/view/WearableListView$ClickListener;
.implements Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;


# static fields
.field private static final MENU_START:I = 0x9


# instance fields
.field private confirmView:Landroid/view/View;

.field private delayedConfirmationView:Landroid/support/wearable/view/DelayedConfirmationView;

.field private itemChosen:I

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazmod/service/models/MenuItems;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/support/wearable/view/WearableListView;

.field private mAdapter:Lcom/amazmod/service/adapters/MenuListAdapter;

.field private mContext:Landroid/content/Context;

.field private mHeader:Landroid/widget/TextView;

.field private mImagesOff:[I

.field private mImagesOn:[I

.field private mItems:[Ljava/lang/String;

.field private mOnScrollListener:Landroid/support/wearable/view/WearableListView$OnScrollListener;

.field private mainLayout:Landroid/view/View;

.field private receiverConnection:Landroid/content/BroadcastReceiver;

.field private receiverSSID:Landroid/content/BroadcastReceiver;

.field private textView1:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field private toggle:[Ljava/lang/String;

.field private vibrator:Landroid/os/Vibrator;

.field private wfmgr:Landroid/net/wifi/WifiManager;

.field private widgetSettings:Lcom/amazmod/service/springboard/WidgetSettings;


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/app/Fragment;-><init>()V

    const-string v1, "Lietotņu pārv."

    const-string v2, "Failu pārv."

    const-string v3, "Pārkārtot logrīkus"

    const-string v4, "Ekrāna iestatījumi"

    const-string v5, "Akumulātora graf."

    const-string v6, "Wi-Fi slēdzis"

    const-string v7, "Wi-Fi iest."

    const-string v8, "Lukturītis"

    const-string v9, "QR kods"

    const-string v10, "Notīrīt atmiņu"

    const-string v11, "Iespējot L.P.M."

    const-string v12, "Atsaukt ierīces administratoru"

    const-string v13, "Iestatīt ierīces administratoru"

    const-string v14, "Restartēt palaidēju"

    const-string v15, "Dzēst palaidēja atmiņu"

    const-string v16, "Restartēt"

    const-string v17, "Ieiet Fastboot"

    const-string v18, "Ieiet Recovery"

    const-string v19, "Vienības"

    const-string v20, "Atslēgt paziņojumus (iOS)"

    const-string v21, "Prom Paziņojums  (iOS)"

    const-string v22, "Paziņojums ScreenOn"

    const-string v23, "Mainīt ievades veidu"

    const-string v24, "Ierīces Info"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mItems:[Ljava/lang/String;

    const/16 v1, 0x18

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mImagesOn:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mImagesOff:[I

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, "adb shell am start -n com.huami.watch.otawatch/.wifi.WifiListActivity"

    const-string v9, ""

    const-string v10, "adb shell am start -n com.huami.watch.setupwizard/.InitPairQRActivity"

    const-string v11, "kill-all"

    const-string v12, ""

    const-string v13, ""

    const-string v14, "adb shell dpm set-active-admin com.amazmod.service/.receiver.AdminReceiver"

    const-string v15, "adb shell am force-stop com.huami.watch.launcher"

    const-string v16, "adb shell rm -rf /sdcard/.watchfacethumb/*;pm clear com.huami.watch.launcher;am force-stop com.huami.watch.launcher"

    const-string v17, "reboot"

    const-string v18, "reboot bootloader"

    const-string v19, "reboot recovery"

    const-string v20, "measurement"

    const-string v21, "huami.watch.localonly.ble_lost_anti_lost"

    const-string v22, "huami.watch.localonly.ble_lost_far_away"

    const-string v23, ""

    const-string v24, ""

    const-string v25, ""

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    new-instance v1, Lcom/amazmod/service/ui/fragments/WearMenuFragment$1;

    invoke-direct {v1, v0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment$1;-><init>(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)V

    iput-object v1, v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mOnScrollListener:Landroid/support/wearable/view/WearableListView$OnScrollListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08007d
        0x7f0800b4
        0x7f0800bd
        0x7f0800b5
        0x7f080068
        0x7f080067
        0x7f080065
        0x7f080063
        0x7f08009a
        0x7f0800b0
        0x7f08007e
        0x7f08008a
        0x7f08007b
        0x7f08007c
        0x7f080083
        0x7f08009b
        0x7f080062
        0x7f0800bc
        0x7f08009d
        0x7f080078
        0x7f080081
        0x7f0800b3
        0x7f0800b7
        0x7f080064
    .end array-data

    :array_1
    .array-data 4
        0x7f08007d
        0x7f0800b4
        0x7f0800bd
        0x7f0800b5
        0x7f080068
        0x7f080067
        0x7f080065
        0x7f080063
        0x7f08009a
        0x7f0800b0
        0x7f08007e
        0x7f08008a
        0x7f08007b
        0x7f08007c
        0x7f080083
        0x7f08009b
        0x7f080062
        0x7f0800bc
        0x7f08009c
        0x7f080077
        0x7f080080
        0x7f0800b2
        0x7f0800b7
        0x7f080064
    .end array-data
.end method

.method static synthetic access$000(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mHeader:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->wfmgr:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->receiverSSID:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getSSID()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->vibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method private checkConnection()V
    .locals 3

    new-instance v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment$5;

    invoke-direct {v0, p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment$5;-><init>(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)V

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->receiverConnection:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->receiverConnection:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getSSID()V
    .locals 3

    new-instance v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment$6;

    invoke-direct {v0, p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment$6;-><init>(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)V

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->receiverSSID:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->receiverSSID:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->wfmgr:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mainLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a015e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->textView1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a015c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->textView2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0162

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView;

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0161

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a015d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->confirmView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a015f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/DelayedConfirmationView;

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->delayedConfirmationView:Landroid/support/wearable/view/DelayedConfirmationView;

    new-instance v0, Lcom/amazmod/service/springboard/WidgetSettings;

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    const-string v2, "AmazMod"

    invoke-direct {v0, v2, v1}, Lcom/amazmod/service/springboard/WidgetSettings;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->widgetSettings:Lcom/amazmod/service/springboard/WidgetSettings;

    return-void
.end method

.method private loadAdapter(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/amazmod/service/adapters/MenuListAdapter;

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/amazmod/service/adapters/MenuListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mAdapter:Lcom/amazmod/service/adapters/MenuListAdapter;

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mAdapter:Lcom/amazmod/service/adapters/MenuListAdapter;

    invoke-virtual {p1, v0}, Landroid/support/wearable/view/WearableListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mOnScrollListener:Landroid/support/wearable/view/WearableListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/wearable/view/WearableListView;->addOnScrollListener(Landroid/support/wearable/view/WearableListView$OnScrollListener;)V

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {p1, p0}, Landroid/support/wearable/view/WearableListView;->setClickListener(Landroid/support/wearable/view/WearableListView$ClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/amazmod/service/ui/fragments/WearMenuFragment;
    .locals 1

    const-string v0, "WearMenuFragment newInstance"

    invoke-static {v0}, Lorg/tinylog/Logger;->info(Ljava/lang/Object;)V

    new-instance v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;

    invoke-direct {v0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;-><init>()V

    return-object v0
.end method

.method private runCommand(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WearMenuFragment runCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/tinylog/Logger;->debug(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazmod/service/util/ExecCommand;

    const/16 v1, 0x41

    invoke-direct {v0, v1, p1}, Lcom/amazmod/service/util/ExecCommand;-><init>(CLjava/lang/String;)V

    const-string v0, "launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.huami.watch.launcher"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private toggle(I)V
    .locals 4

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WearMenuFragment toggleUnit toggle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \\ status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/tinylog/Logger;->debug(Ljava/lang/Object;)V

    const-string v1, "adb shell settings put secure "

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazmod/service/models/MenuItems;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amazmod/service/models/MenuItems;->state:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 1;exit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->runCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazmod/service/models/MenuItems;

    iput-boolean v2, v0, Lcom/amazmod/service/models/MenuItems;->state:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 0;exit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->runCommand(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mAdapter:Lcom/amazmod/service/adapters/MenuListAdapter;

    invoke-virtual {p1}, Lcom/amazmod/service/adapters/MenuListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private toggleNotificationScreenOn(I)V
    .locals 5

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->widgetSettings:Lcom/amazmod/service/springboard/WidgetSettings;

    const/4 v1, 0x0

    const-string v2, "pref_notifications_screen_on"

    invoke-virtual {v0, v2, v1}, Lcom/amazmod/service/springboard/WidgetSettings;->get(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WearMenuFragment toggleNotificationScreenOn toggle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \\ status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/tinylog/Logger;->debug(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazmod/service/models/MenuItems;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amazmod/service/models/MenuItems;->state:Z

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->widgetSettings:Lcom/amazmod/service/springboard/WidgetSettings;

    invoke-virtual {p1, v2, v0}, Lcom/amazmod/service/springboard/WidgetSettings;->set(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazmod/service/models/MenuItems;

    iput-boolean v1, p1, Lcom/amazmod/service/models/MenuItems;->state:Z

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->widgetSettings:Lcom/amazmod/service/springboard/WidgetSettings;

    invoke-virtual {p1, v2, v1}, Lcom/amazmod/service/springboard/WidgetSettings;->set(Ljava/lang/String;I)Z

    :goto_0
    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mAdapter:Lcom/amazmod/service/adapters/MenuListAdapter;

    invoke-virtual {p1}, Lcom/amazmod/service/adapters/MenuListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateContent()V
    .locals 9

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->widgetSettings:Lcom/amazmod/service/springboard/WidgetSettings;

    invoke-virtual {v0}, Lcom/amazmod/service/springboard/WidgetSettings;->reload()Z

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->setGreedyTouchMode(Z)V

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->hideConfirm()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mItems:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    if-nez v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->wfmgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->widgetSettings:Lcom/amazmod/service/springboard/WidgetSettings;

    const-string v4, "pref_notifications_screen_on"

    invoke-virtual {v3, v4, v0}, Lcom/amazmod/service/springboard/WidgetSettings;->get(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/16 v3, 0x12

    if-lt v2, v3, :cond_3

    const/16 v3, 0x14

    if-gt v2, v3, :cond_3

    iget-object v3, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    goto :goto_2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WearMenuFragment onCreate exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/tinylog/Logger;->error(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iget-object v4, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/amazmod/service/models/MenuItems;

    iget-object v6, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mImagesOn:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mImagesOff:[I

    aget v7, v7, v2

    iget-object v8, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mItems:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/amazmod/service/models/MenuItems;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->checkConnection()V

    const-string v0, "AmazMod"

    invoke-direct {p0, v0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->loadAdapter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->delayedConfirmationView:Landroid/support/wearable/view/DelayedConfirmationView;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/view/DelayedConfirmationView;->setTotalTimeMs(J)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->textView1:Landroid/widget/TextView;

    const-string v1, "Proceeding in 3s\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->textView2:Landroid/widget/TextView;

    const-string v1, "Tap to cancel"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public beginCountdown()V
    .locals 3

    iget v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->itemChosen:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Are you sure? Low Power Mode (LPM) disables Bluetooth and touchscreen until the watch is restarted (press and hold power button) or battery goes below 5% and watch is charged again."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/amazmod/service/ui/fragments/WearMenuFragment$2;

    invoke-direct {v2, p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment$2;-><init>(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->showConfirm()V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->delayedConfirmationView:Landroid/support/wearable/view/DelayedConfirmationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/DelayedConfirmationView;->setPressed(Z)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->delayedConfirmationView:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-virtual {v0}, Landroid/support/wearable/view/DelayedConfirmationView;->start()V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->delayedConfirmationView:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/DelayedConfirmationView;->setListener(Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WearMenuFragment beginCountdown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->delayedConfirmationView:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-virtual {v1}, Landroid/support/wearable/view/DelayedConfirmationView;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/tinylog/Logger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public hideConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->confirmView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mHeader:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->confirmView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->confirmView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->requestFocus()Z

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazmod/service/springboard/LauncherWearGridActivity;

    invoke-virtual {v0, v1}, Lcom/amazmod/service/springboard/LauncherWearGridActivity;->setSwipeable(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WearMenuFragment onAttach context: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/tinylog/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/support/wearable/view/WearableListView$ViewHolder;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/wearable/view/WearableListView$ViewHolder;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->itemChosen:I

    iget p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->itemChosen:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    const-string v1, "Something went wrong"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_0
    const/16 p1, 0x49

    invoke-virtual {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->startWearGridActivity(C)V

    goto/16 :goto_1

    :pswitch_1
    const-class p1, Lcom/amazmod/service/ui/InputMethodActivity;

    invoke-virtual {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggleNotificationScreenOn(I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle(I)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->beginCountdown()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->runCommand(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x46

    invoke-virtual {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->startWearGridActivity(C)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->runCommand(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_8
    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->wfmgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazmod/service/models/MenuItems;

    iput-boolean v0, p1, Lcom/amazmod/service/models/MenuItems;->state:Z

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->wfmgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazmod/service/models/MenuItems;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amazmod/service/models/MenuItems;->state:Z

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->wfmgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mAdapter:Lcom/amazmod/service/adapters/MenuListAdapter;

    invoke-virtual {p1}, Lcom/amazmod/service/adapters/MenuListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :pswitch_9
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    const-class v1, Lcom/amazmod/service/ui/BatteryGraphActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_a
    const-class p1, Lcom/amazmod/service/ui/ScreenSettingsActivity;

    invoke-virtual {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_b
    const-class p1, Lcom/amazmod/service/springboard/WidgetsReorderActivity;

    invoke-virtual {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_c
    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->startWearGridActivity(C)V

    goto :goto_1

    :pswitch_d
    const/16 p1, 0x41

    invoke-virtual {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->startWearGridActivity(C)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WearMenuFragment onCreate"

    invoke-static {p1}, Lorg/tinylog/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const-string p3, "WearMenuFragment onCreateView"

    invoke-static {p3}, Lorg/tinylog/Logger;->info(Ljava/lang/Object;)V

    const p3, 0x7f0d003d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->receiverConnection:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->receiverSSID:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onTimerFinished(Landroid/view/View;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WearMenuFragment onTimerFinished v.isPressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/tinylog/Logger;->debug(Ljava/lang/Object;)V

    check-cast p1, Landroid/support/wearable/view/DelayedConfirmationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/wearable/view/DelayedConfirmationView;->setListener(Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment$3;

    invoke-direct {v0, p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment$3;-><init>(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->itemChosen:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->toggle:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->runCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/amazmod/service/events/incoming/RevokeAdminOwner;

    new-instance v1, Lcom/huami/watch/transport/DataBundle;

    invoke-direct {v1}, Lcom/huami/watch/transport/DataBundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazmod/service/events/incoming/RevokeAdminOwner;-><init>(Lcom/huami/watch/transport/DataBundle;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/amazmod/service/events/incoming/EnableLowPower;

    new-instance v1, Lcom/huami/watch/transport/DataBundle;

    invoke-direct {v1}, Lcom/huami/watch/transport/DataBundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazmod/service/events/incoming/EnableLowPower;-><init>(Lcom/huami/watch/transport/DataBundle;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    const-string v4, "Killing background processes\u2026"

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/amazmod/service/ui/fragments/WearMenuFragment$4;

    invoke-direct {v0, p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment$4;-><init>(Lcom/amazmod/service/ui/fragments/WearMenuFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iput v3, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->itemChosen:I

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerSelected(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->delayedConfirmationView:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-virtual {v0}, Landroid/support/wearable/view/DelayedConfirmationView;->reset()V

    move-object v0, p1

    check-cast v0, Landroid/support/wearable/view/DelayedConfirmationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/DelayedConfirmationView;->setListener(Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;)V

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->hideConfirm()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WearMenuFragment onTimerSelected v.isPressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/tinylog/Logger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public onTopEmptyRegionClick()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "WearMenuFragment onViewCreated"

    invoke-static {p1}, Lorg/tinylog/Logger;->info(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->init()V

    invoke-direct {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->updateContent()V

    return-void
.end method

.method public showConfirm()V
    .locals 3

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->confirmView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->setClickable(Z)V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->listView:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->clearAnimation()V

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->confirmView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->confirmView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazmod/service/springboard/LauncherWearGridActivity;

    invoke-virtual {v0, v1}, Lcom/amazmod/service/springboard/LauncherWearGridActivity;->setSwipeable(Z)V

    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startWearGridActivity(C)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/amazmod/service/springboard/LauncherWearGridActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1c080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    iget-object p1, p0, Lcom/amazmod/service/ui/fragments/WearMenuFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
