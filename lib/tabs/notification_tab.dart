import 'package:flutter/material.dart';

class NotificationItem {
  final String title;
  final String message;
  final String time;
  final IconData icon;
  final Color iconColor;
  bool isRead; // Tidak final agar bisa diubah

  NotificationItem({
    required this.title,
    required this.message,
    required this.time,
    required this.icon,
    required this.iconColor,
    this.isRead = false,
  });
}

class NotificationTab extends StatefulWidget {
  const NotificationTab({super.key});

  @override
  State<NotificationTab> createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  final List<NotificationItem> _notifications = [
    NotificationItem(
      title: 'Exciting News! Here\'s 20% hardware',
      message: 'Everything you\'ve got your eyes on. See what\'s new.',
      time: '2m ago',
      icon: Icons.local_offer,
      iconColor: Colors.orange,
      isRead: false,
    ),
    NotificationItem(
      title: 'You didn\'t like got a exchange',
      message: 'Making for the future faster! See what\'s new.',
      time: '5m ago',
      icon: Icons.swap_horiz,
      iconColor: Colors.blue,
      isRead: false,
    ),
    NotificationItem(
      title: 'Great choice! Try out these',
      message: 'Trusted by millions worldwide! See what\'s new.',
      time: '1h ago',
      icon: Icons.recommend,
      iconColor: Colors.green,
      isRead: true,
    ),
    NotificationItem(
      title: 'Great news! Try out shoes',
      message: 'Trusted by thousands of runners! See what\'s new.',
      time: '3h ago',
      icon: Icons.notifications_active,
      iconColor: Colors.purple,
      isRead: true,
    ),
    NotificationItem(
      title: 'Order Shipped Successfully',
      message: 'Your order #12345 has been shipped and will arrive soon.',
      time: '1d ago',
      icon: Icons.local_shipping,
      iconColor: Colors.teal,
      isRead: true,
    ),
    NotificationItem(
      title: 'Payment Successful',
      message: 'Your payment of \$120.99 has been processed successfully.',
      time: '2d ago',
      icon: Icons.check_circle,
      iconColor: Colors.green,
      isRead: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {
                        _showOptions(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            
            // Notifications List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: _notifications.length,
                itemBuilder: (context, index) {
                  return _buildNotificationItem(_notifications[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationItem(NotificationItem notification) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: notification.isRead ? Colors.white : Colors.blue[50],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: notification.isRead ? Colors.grey[200]! : Colors.blue[100]!,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: notification.iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            notification.icon,
            color: notification.iconColor,
            size: 28,
          ),
        ),
        title: Text(
          notification.title,
          style: TextStyle(
            fontWeight: notification.isRead ? FontWeight.w600 : FontWeight.bold,
            fontSize: 15,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Text(
              notification.message,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[700],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5),
            Text(
              notification.time,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
        trailing: !notification.isRead
            ? Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              )
            : null,
        onTap: () {
          setState(() {
            notification.isRead = true;
          });
        },
      ),
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.check_circle_outline),
                title: const Text('Mark all as read'),
                onTap: () {
                  setState(() {
                    for (var notification in _notifications) {
                      notification.isRead = true;
                    }
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete_outline),
                title: const Text('Clear all notifications'),
                onTap: () {
                  setState(() {
                    _notifications.clear();
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: const Text('Notification settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

