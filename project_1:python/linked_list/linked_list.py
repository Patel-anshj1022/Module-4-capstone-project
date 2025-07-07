from linked_list.node import Node

class LinkedList:
    def __init__(self):
        self.head = None

    def add(self, data):
        new_node = Node(data)
        new_node.next = self.head
        self.head = new_node

    def get_all(self):
        current = self.head
        items = []
        while current:
            items.append(current.data)
            current = current.next
        return items
